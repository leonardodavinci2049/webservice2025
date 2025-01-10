import {
  IsEmail,
  IsEnum,
  IsInt,
  IsOptional,
  IsString,
  IsUUID,
} from 'class-validator';
import { RoleEnum } from 'src/core/enums/role.enum';

export class RegisterAuthDto {
  @IsOptional()
  @IsUUID(4, { message: 'ID_UUID must be a valid UUIDv4' })
  ID_UUID;

  @IsOptional()
  @IsInt()
  ID_USUARIO_SYSTEM?: number;

  @IsInt()
  ID_SYSTEM_CFG_CLIENTE?: number;

  @IsInt()
  ID_PESSOA?: number;

  @IsString({ message: 'LOGIN must be a valid string', each: true })
  LOGIN?: string;

  @IsString({ message: 'NOME must be a valid string', each: true })
  NOME?: string;

  @IsOptional()
  @IsEnum(RoleEnum, { message: 'ROLE must be a valid Role' })
  ROLE?: number;

  @IsEmail({}, { message: 'Invalid email' })
  EMAIL_DE_LOGIN: string;

  @IsString({ message: 'LOGIN must be a valid string', each: true })
  SENHA?: string;
}
