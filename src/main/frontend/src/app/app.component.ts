import { Component } from '@angular/core';
import { Http } from '@angular/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'All you need is Git + Docker';
  name = '';
  age: number;

  response = '';

  constructor(private http: Http) {

  }

  sayHello(): void {
    this.http.get(`/api/greeting?name=${this.name}&age=${this.age}`)
      .subscribe(data => {
        this.response = data.text();
      });
  }

}
