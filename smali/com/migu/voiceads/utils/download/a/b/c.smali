.class public Lcom/migu/voiceads/utils/download/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/migu/voiceads/utils/download/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    new-instance v0, Lcom/migu/voiceads/utils/download/d/a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/migu/voiceads/utils/download/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/c;->b:Lcom/migu/voiceads/utils/download/d/a;

    return-void
.end method

.method private b(Lcom/migu/voiceads/utils/download/b/c;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/migu/voiceads/utils/download/a/b/c;->a(Lcom/migu/voiceads/utils/download/b/c;I)V

    return-void
.end method

.method private d(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/c;->b:Lcom/migu/voiceads/utils/download/d/a;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/d/a;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    return-void
.end method

.method private e(Lcom/migu/voiceads/utils/download/b/c;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/c;->b:Lcom/migu/voiceads/utils/download/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/d/a;->a(J)V

    return-void
.end method

.method public a(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/migu/voiceads/utils/download/b/c;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "install_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "install_type"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/c;->b:Lcom/migu/voiceads/utils/download/d/a;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/d/a;->a(Lcom/migu/voiceads/utils/download/b/c;)V

    return-void
.end method

.method public c(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/c;->d(Lcom/migu/voiceads/utils/download/b/c;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/c;->a(Lcom/migu/voiceads/utils/download/b/c;)V

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/c;->e(Lcom/migu/voiceads/utils/download/b/c;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/c;->a(J)V

    goto :goto_1
.end method
