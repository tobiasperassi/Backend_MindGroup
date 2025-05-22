import { Controller, Post, Body, Put, Param, Patch } from '@nestjs/common';
import { AuthService } from './auth.service';
import { UpdateAuthDto } from './dto/update-auth.dto';
import { CreateAuthDto } from './dto/create-auth.dto';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  register(@Body() body: CreateAuthDto) {
    return this.authService.register(body.email, body.password);
  }

  @Post('login')
  login(@Body() body: { email: string; password: string }) {
    return this.authService.login(body.email, body.password);
    
  }

  @Patch('update/:id')
  updateProfile(@Param('id') id: string, @Body() dto: UpdateAuthDto) {
    return this.authService.updateUser(+id, dto);
  }
}
