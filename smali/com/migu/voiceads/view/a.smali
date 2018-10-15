.class Lcom/migu/voiceads/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/bussiness/d;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdLayout;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/a;->a:Lcom/migu/voiceads/view/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/view/a;)Lcom/migu/voiceads/view/AdLayout;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/a;->a:Lcom/migu/voiceads/view/AdLayout;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/migu/voiceads/view/a;->a:Lcom/migu/voiceads/view/AdLayout;

    invoke-static {v1}, Lcom/migu/voiceads/view/AdLayout;->access$0(Lcom/migu/voiceads/view/AdLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/view/a;->a:Lcom/migu/voiceads/view/AdLayout;

    invoke-static {v1, v0}, Lcom/migu/voiceads/view/AdLayout;->access$1(Lcom/migu/voiceads/view/AdLayout;Z)V

    iget-object v1, p0, Lcom/migu/voiceads/view/a;->a:Lcom/migu/voiceads/view/AdLayout;

    iget-object v1, v1, Lcom/migu/voiceads/view/AdLayout;->b:Landroid/app/Activity;

    new-instance v2, Lcom/migu/voiceads/view/b;

    invoke-direct {v2, p0}, Lcom/migu/voiceads/view/b;-><init>(Lcom/migu/voiceads/view/a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
