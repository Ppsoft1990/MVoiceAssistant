.class public Lyu;
.super Lbca;
.source "PushDbHelper.java"


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

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lzg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lzk;

    aput-object v2, v0, v1

    sput-object v0, Lyu;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string/jumbo v2, "blcpush.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lyu;->a:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbca;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    .line 20
    return-void
.end method
