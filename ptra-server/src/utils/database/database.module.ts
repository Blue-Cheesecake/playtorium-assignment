import { Module } from '@nestjs/common';
import { IDatabaseService, MockDatabaseService } from './database.service';

@Module({
  providers: [
    {
      provide: IDatabaseService,
      useClass: MockDatabaseService,
    },
  ],
})
export class DatabaseModule {}
