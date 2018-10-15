.class public Lcom/migu/voiceads/utils/download/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcom/migu/voiceads/utils/download/a/a/a;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->c:Lcom/migu/voiceads/utils/download/a/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/a/a;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/a/a/a;->b:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/a/a;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->c:Lcom/migu/voiceads/utils/download/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/a/a/a;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->c:Lcom/migu/voiceads/utils/download/a/a/a;

    :cond_0
    sget-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->c:Lcom/migu/voiceads/utils/download/a/a/a;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
