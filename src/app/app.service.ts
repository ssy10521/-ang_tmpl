import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AppService {
  private API_SERVER: string = "http://localhost:8080/api/v1";

  constructor(private httpClient: HttpClient) { }
  
  sendGetRequest() {
    return this.httpClient.get(this.API_SERVER + "/");
  }

  sendPostRequest(param: any = {}) {
    return this.httpClient.post(this.API_SERVER + "/", param);
  }

  /*sendRequest(param: any) {
    return this.httpClient.get(this.API_SERVER);
  }*/
}
