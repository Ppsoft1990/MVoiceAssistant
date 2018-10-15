.class Lcom/migu/voiceads/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdView;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iput-object p2, p0, Lcom/migu/voiceads/view/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/migu/voiceads/view/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const v7, 0x11561

    const/4 v6, 0x5

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/view/i;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/migu/voiceads/view/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/migu/voiceads/view/i;->b:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/migu/voiceads/view/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->l()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x11561

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v1, v1, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v1, v6, v7}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :try_start_3
    const-string/jumbo v0, "hyperlink"

    iget-object v1, p0, Lcom/migu/voiceads/view/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v1, p0, Lcom/migu/voiceads/view/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/view/AdView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "ad type is neither content nor hyperlink!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x11364

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid ad content"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/i;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x1155a

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
