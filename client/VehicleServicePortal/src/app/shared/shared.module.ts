import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ButtonComponent } from './components/button/button.component';
import { CardComponent } from './components/card/card.component';
import { InputComponent } from './components/input/input.component';
import { ModalComponent } from './components/modal/modal.component';
import { TableComponent } from './components/table/table.component';

const components = [
  ButtonComponent,
  CardComponent,
  InputComponent,
  ModalComponent,
  TableComponent
];

@NgModule({
  imports: [CommonModule, ...components],
  exports: [CommonModule, ...components]
})
export class SharedModule { }
