import { ParamId } from 'src/core/decorators/param-id.decorator';
import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Put,
  ParseIntPipe,
} from '@nestjs/common';

import { UserService } from './user.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Controller('v1/user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Post()
  create(@Body() data: CreateUserDto) {
    // console.log({ email, password });
    return this.userService.create(data);
  }

  @Get()
  findAll() {
    // return this.usersService.findAll();
    return this.userService.findAll();
  }

  @Get('v1')
  findAll1() {
    console.log({ findAll1: 'findAll1' });
    return this.userService.findAll1();
  }

  @Get('v2')
  findAll2() {
    // return this.usersService.findAll();
    return this.userService.findAll2();
  }

  @Get('v3')
  findAll3() {
    // return this.usersService.findAll();
    return this.userService.findAll3();
  }

  @Get('v4')
  findAll4() {
    // return this.usersService.findAll();
    return this.userService.findAll4();
  }

  @Get(':id')
  findOne(@ParamId() id: number) {
    return this.userService.findOne(id);
  }

  @Put(':id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateUserDto: UpdateUserDto,
  ) {
    return this.userService.update(id, updateUserDto);
  }

  @Patch(':id')
  updatePartial(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateUserDto: UpdateUserDto,
  ) {
    return this.userService.update(id, updateUserDto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.userService.remove(id);
  }
}
