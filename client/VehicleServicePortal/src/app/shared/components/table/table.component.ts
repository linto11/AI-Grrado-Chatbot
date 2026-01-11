import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-table',
  standalone: true,
  imports: [CommonModule],
  template: `
    <div class="overflow-x-auto">
      <table class="w-full border-collapse border border-gray-300">
        <thead class="bg-gray-100">
          <tr>
            <th *ngFor="let header of headers" class="border border-gray-300 px-4 py-2 text-left font-semibold text-gray-900">
              {{ header }}
            </th>
          </tr>
        </thead>
        <tbody>
          <tr *ngFor="let row of rows; let i = index" [ngClass]="i % 2 === 0 ? 'bg-white' : 'bg-gray-50'" class="hover:bg-gray-100">
            <td *ngFor="let cell of row" class="border border-gray-300 px-4 py-2 text-gray-700">
              {{ cell }}
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  `,
  styles: []
})
export class TableComponent {
  @Input() headers: string[] = [];
  @Input() rows: any[][] = [];
}
