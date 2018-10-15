.class public Lcom/iflytek/blc/push/PushDbHelper;
.super Lcom/iflytek/blc/orm/util/BaseDBHelper;


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/iflytek/blc/push/entity/BaseNotice;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/iflytek/blc/push/entity/ClientNotice;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/blc/push/PushDbHelper;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v2, "blcpush.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/iflytek/blc/push/PushDbHelper;->a:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/orm/util/BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/orm/util/BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    return-void
.end method
