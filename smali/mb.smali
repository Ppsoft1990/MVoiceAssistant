.class public final Lmb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/iflytek/cloud/c;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/msc/msc.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmb;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/c;->a:Lcom/iflytek/cloud/c;

    sput-object v0, Lmb;->b:Lcom/iflytek/cloud/c;

    sget-object v0, Lmb;->a:Ljava/lang/String;

    sput-object v0, Lmb;->c:Ljava/lang/String;

    sput-boolean v2, Lmb;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lmb;->e:Z

    sput-boolean v2, Lmb;->f:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lmb;->f:Z

    return v0
.end method
