import type { BlockRsp } from '~/types/base';

export type Category = {
    level: number;
    id: number;
    created_at: Date;
    slug: string;
    name: string;
    parent_id: number | null;
    updated_at: Date | null;
    children?: Category[];
};

export type CategoriesRsp = BlockRsp<Category[]>;
