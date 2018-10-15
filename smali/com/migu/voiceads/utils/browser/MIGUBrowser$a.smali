.class Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/browser/MIGUBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;


# direct methods
.method private constructor <init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    iget-object v0, v0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c:Lcom/migu/voiceads/utils/e;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/utils/e;)V

    return-void
.end method
