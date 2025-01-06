import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.main/app.module';
import { Logger, ValidationPipe } from '@nestjs/common';
import { envs } from './core/config';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const logger = new Logger('WEBSERVICE');
  app.setGlobalPrefix('api');

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true, // remove properties that do not have decorators
      transform: true, // transform payload to DTO instances
      forbidNonWhitelisted: true, // throw error if payload has properties that do not have decorators
      transformOptions: {
        enableImplicitConversion: true,
      },
    }),
  );

  // medida de segurança para só disponibilizar os metodos listados
  app.enableCors({
    origin: '*',
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    allowedHeaders: 'Content-Type, Accept',
  });

  await app.listen(process.env.PORT ?? envs.APP_PORT);
  logger.log(`Application is running on port: ${envs.APP_PORT}`);
}
bootstrap();
