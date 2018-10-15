.class public Laag;
.super Lbca;
.source "PhoneTypeDbHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:[Ljava/lang/Class;
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
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laag;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phonenum_type.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laag;->b:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phonenum_type_net.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laag;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Laab;

    aput-object v2, v0, v1

    sput-object v0, Laag;->d:[Ljava/lang/Class;

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
    .line 55
    .local p4, "clazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbca;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Laag;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Laag;

    const/4 v1, 0x1

    sget-object v2, Laag;->d:[Ljava/lang/Class;

    invoke-direct {v0, p0, p1, v1, v2}, Laag;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Class;)V

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Laag;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLocalDB"    # Z

    .prologue
    const/4 v3, 0x1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Laag;

    sget-object v1, Laag;->b:Ljava/lang/String;

    sget-object v2, Laag;->d:[Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v3, v2}, Laag;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Class;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laag;

    sget-object v1, Laag;->c:Ljava/lang/String;

    sget-object v2, Laag;->d:[Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v3, v2}, Laag;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 64
    return-void
.end method
