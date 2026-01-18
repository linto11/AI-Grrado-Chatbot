namespace Utility.Integration.Logging.Queue;

/// <summary>
/// Interface for enqueueing log items for background processing
/// Maintains FIFO order - all logs are processed sequentially
/// </summary>
public interface ILoggingQueue
{
    /// <summary>
    /// Add a log item to the queue for background processing
    /// </summary>
    ValueTask EnqueueAsync(LogItem item);

    /// <summary>
    /// Dequeue a log item for processing (internal use by LoggingQueueService)
    /// </summary>
    ValueTask<LogItem?> DequeueAsync(CancellationToken cancellationToken);
}
