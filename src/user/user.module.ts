import {
  MiddlewareConsumer,
  Module,
  NestModule,
  RequestMethod,
} from '@nestjs/common';
import { UserService } from './user.service';
import { UserController } from './user.controller';
import { DatabaseModule } from 'src/database/database.module';
import { PrismaModule } from 'src/core/prisma/prisma.module';
import { UserIdCheckMiddleware } from 'src/core/middlewares/user-id-check.middleware';

@Module({
  imports: [DatabaseModule, PrismaModule],
  controllers: [UserController],
  providers: [UserService],
  exports: [UserService],
})
export class UserModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(UserIdCheckMiddleware).forRoutes({
      path: 'v1/user/:id',
      method: RequestMethod.DELETE,
    });
  }
}
