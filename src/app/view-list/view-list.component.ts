import { Component, OnInit, ViewChild } from '@angular/core';
import { AppService } from '../app.service';
import { ViewDetailComponent } from '../view-detail/view-detail.component';

@Component({
  selector: 'app-view-list',
  templateUrl: './view-list.component.html',
  styleUrls: ['./view-list.component.css']
})
export class ViewListComponent implements OnInit {
  @ViewChild(ViewDetailComponent, {static: false}) viewDetail: ViewDetailComponent = new ViewDetailComponent();

  constructor(private appService: AppService) { }

  ngOnInit(): void {
  }

}
