.class public Lcom/iflytek/blc/cache/CacheDbHelper;
.super Lcom/iflytek/blc/orm/util/BaseDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-string/jumbo v2, "blccache.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/orm/util/BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    return-void
.end method
