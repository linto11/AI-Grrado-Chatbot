using System.Threading.Channels;

namespace Utility.Integration.Logging.Queue;

/// <summary>
/// Implementation of logging queue using Channel<T> for thread-safe, FIFO processing
/// Maintains sequential order of all log items regardless of logging source
/// </summary>
public class LoggingQueue : ILoggingQueue
{
    private readonly Channel<LogItem> _channel;

    public LoggingQueue(int capacity = 1000)
    {
        var options = new BoundedChannelOptions(capacity)
        {
            FullMode = BoundedChannelFullMode.Wait
        };
        _channel = Channel.CreateBounded<LogItem>(options);
    }

    public async ValueTask EnqueueAsync(LogItem item)
    {
        if (item == null)
            throw new ArgumentNullException(nameof(item));

        await _channel.Writer.WriteAsync(item);
    }

    public async ValueTask<LogItem?> DequeueAsync(CancellationToken cancellationToken)
    {
        try
        {
            return await _channel.Reader.ReadAsync(cancellationToken);
        }
        catch (OperationCanceledException)
        {
            return null;
        }
    }
}
