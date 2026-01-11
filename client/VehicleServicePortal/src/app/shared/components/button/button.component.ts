import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-button',
  standalone: true,
  imports: [CommonModule],
  template: `
    <button 
      [ngClass]="getButtonClasses()" 
      [disabled]="disabled"
      (click)="onClick.emit($event)"
    >
      <ng-content></ng-content>
    </button>
  `,
  styles: []
})
export class ButtonComponent {
  @Input() variant: 'default' | 'outline' | 'ghost' | 'destructive' = 'default';
  @Input() size: 'sm' | 'md' | 'lg' = 'md';
  @Input() disabled = false;
  @Input() onClick = { emit: (e: any) => {} };

  getButtonClasses(): string {
    const baseClasses = 'font-medium rounded-md transition-colors focus:outline-none focus:ring-2 focus:ring-offset-2';
    const sizeClasses = {
      sm: 'px-3 py-1 text-sm',
      md: 'px-4 py-2 text-base',
      lg: 'px-6 py-3 text-lg'
    };
    const variantClasses = {
      default: 'bg-black text-white hover:bg-gray-900 focus:ring-gray-500',
      outline: 'border border-gray-300 text-gray-900 hover:bg-gray-50 focus:ring-gray-500',
      ghost: 'text-gray-900 hover:bg-gray-100 focus:ring-gray-500',
      destructive: 'bg-red-600 text-white hover:bg-red-700 focus:ring-red-500'
    };
    
    return `${baseClasses} ${sizeClasses[this.size]} ${variantClasses[this.variant]} ${this.disabled ? 'opacity-50 cursor-not-allowed' : ''}`;
  }
}
