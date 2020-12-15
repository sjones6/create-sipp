---
to: models/User.ts
---

import { Model } from 'sipp';
import {
  IsEmail,
  IsString,
  MinLength,
  MaxLength,
  IsInt,
  IsOptional,
  IsNotEmpty,
} from 'sipp/validation';

export class User extends Model {
  @IsEmail(undefined, {
    message: 'A valid email is required.',
  })
  email: string;

  @IsString()
  @IsNotEmpty({
    message: 'Required.',
  })
  first_name: string;

  @IsInt()
  @IsOptional()
  id: number;

  @IsString()
  @IsNotEmpty({
    message: 'Required.',
  })
  last_name: string;

  @MinLength(8, {
    message: 'Password must be longer than 8 characters.',
  })
  @MaxLength(24, {
    message: 'Password must not be longer than 24 characters.',
  })
  password: string;

  static tableName = 'users';

  /**
   * See https://vincit.github.io/objection.js/guide/relations.html for format
   */
  static get relationMappings() {
    return {
    };
  }

  /**
   * These values can be safely filled when creating via type-hint
   */
  static fillable() {
    return ['email', 'password', 'first_name', 'last_name'];
  }
}
