import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AppService {
  private API_SERVER: string = "http://localhost:3300";

  constructor(private httpClient: HttpClient) { }

  /*sendRequest(param: any) {
    return this.httpClient.get(this.API_SERVER);
  }*/
}
