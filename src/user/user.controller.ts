import { ParamId } from 'src/core/decorators/param-id.decorator';
import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  Put,
  ParseIntPipe,
} from '@nestjs/common';

import { UserService } from './user.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { getMd5 } from 'src/core/utls/generators/get_md5';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Post('v1/register')
  create(@Body() data: CreateUserDto) {
    // console.log({ email, password });
    return this.userService.create(data);
  }

  @Post('v1/getMd5')
  getMt5(@Body() date: { str: string }) {
    // return this.usersService.findAll();
    return getMd5(date.str);
  }

  @Get('v1/findMany')
  findAll() {
    // return this.usersService.findAll();
    return this.userService.findAll();
  }

  @Get('v1/findManyV1')
  findAll1() {
    // console.log({ findAll1: 'findAll1' });
    return this.userService.findAll1();
  }

  @Get('v1/findManyV2')
  findAll2() {
    // return this.usersService.findAll();
    return this.userService.findAll2();
  }

  @Get('v1/findOne/:id')
  findOne(@ParamId() id: number) {
    return this.userService.findOne(id);
  }

  @Put('v1/updateAny/:id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateUserDto: UpdateUserDto,
  ) {
    return this.userService.update(id, updateUserDto);
  }

  @Delete('v1/deleteOne/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.userService.remove(id);
  }
}
