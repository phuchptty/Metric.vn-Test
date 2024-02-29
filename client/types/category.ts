import type { BlockRsp } from '~/types/base';

export type CategoryData = {
    level: number;
    id: number;
    created_at: Date;
    slug: string;
    name: string;
    parent_id: number | null;
    updated_at: Date | null;
    children?: CategoryData[];
};

export type CategoriesRsp = BlockRsp<CategoryData[]>;
