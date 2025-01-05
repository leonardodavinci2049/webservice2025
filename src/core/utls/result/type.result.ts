export class modelResult {
  constructor(
    public message: string,
    public success: boolean,
    public data: any,
    public error: any,
    public status: number,
  ) {}
}
