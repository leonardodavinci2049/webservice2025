import { Controller, Post, Body } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginAuthDto } from './dto/login-auth.dto';

@Controller('v1/auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('signIn')
  signIn(@Body() loginAuthDto: LoginAuthDto) {
    // console.log(loginAuthDto.EMAIL_DE_LOGIN, loginAuthDto.SENHA);
    return this.authService.signIn(loginAuthDto);
  }
}
