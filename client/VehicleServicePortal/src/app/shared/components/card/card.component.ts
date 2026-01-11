import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-card',
  standalone: true,
  imports: [CommonModule],
  template: `
    <div [ngClass]="getCardClasses()">
      <ng-content></ng-content>
    </div>
  `,
  styles: []
})
export class CardComponent {
  @Input() className = '';

  getCardClasses(): string {
    return `bg-white rounded-lg border border-gray-200 shadow-sm p-6 ${this.className}`;
  }
}
