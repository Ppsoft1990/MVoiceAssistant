.class public Lcom/iflytek/blc/orm/util/BaseDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/iflytek/blc/orm/util/DatabaseContext;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/orm/util/DatabaseContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/iflytek/blc/orm/util/BaseDBHelper;->a:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/orm/util/BaseDBHelper;->a:[Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/iflytek/blc/orm/util/TableHelper;->createTablesByClasses(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/orm/util/BaseDBHelper;->a:[Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/iflytek/blc/orm/util/TableHelper;->dropTablesByClasses(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/orm/util/BaseDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
