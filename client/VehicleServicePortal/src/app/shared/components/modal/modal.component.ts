import { Component, Input, Output, EventEmitter } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-modal',
  standalone: true,
  imports: [CommonModule],
  template: `
    <div *ngIf="isOpen" class="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-50" (click)="onBackdropClick()">
      <div class="bg-white rounded-lg shadow-lg max-w-2xl w-full mx-4" (click)="$event.stopPropagation()">
        <div class="flex justify-between items-center p-6 border-b border-gray-200">
          <h2 class="text-xl font-semibold text-gray-900">{{ title }}</h2>
          <button (click)="close()" class="text-gray-500 hover:text-gray-700">✕</button>
        </div>
        <div class="p-6">
          <ng-content></ng-content>
        </div>
        <div class="flex justify-end gap-2 p-6 border-t border-gray-200" *ngIf="showFooter">
          <button (click)="close()" class="px-4 py-2 border border-gray-300 rounded-md hover:bg-gray-50">Cancel</button>
          <button (click)="onSubmit()" class="px-4 py-2 bg-black text-white rounded-md hover:bg-gray-900">Submit</button>
        </div>
      </div>
    </div>
  `,
  styles: []
})
export class ModalComponent {
  @Input() isOpen = false;
  @Input() title = '';
  @Input() showFooter = true;
  @Output() onClose = new EventEmitter<void>();
  @Output() onSubmit = new EventEmitter<void>();

  close() {
    this.isOpen = false;
    this.onClose.emit();
  }

  onBackdropClick() {
    this.close();
  }

  submit() {
    this.onSubmit.emit();
  }
}
