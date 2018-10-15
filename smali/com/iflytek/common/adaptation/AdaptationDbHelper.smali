.class public Lcom/iflytek/common/adaptation/AdaptationDbHelper;
.super Lbca;
.source "AdaptationDbHelper.java"


# static fields
.field private static final DATABASE_FILE:Ljava/lang/String; = "adaptation.db"

.field private static final DATABASE_PATH:Ljava/lang/String; = ""

.field private static final DBNAME:Ljava/lang/String; = "adaptation.db"

.field private static final DBVERSION:I = 0x4

.field private static final clazz:[Ljava/lang/Class;
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
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/adaptation/AdaptationDbHelper;->clazz:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-string/jumbo v2, "adaptation.db"

    const/4 v3, 0x0

    const/4 v4, 0x4

    sget-object v5, Lcom/iflytek/common/adaptation/AdaptationDbHelper;->clazz:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbca;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I
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

    .prologue
    .line 26
    .local p4, "clazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbca;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    .line 27
    return-void
.end method
