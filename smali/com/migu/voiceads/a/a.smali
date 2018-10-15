.class public Lcom/migu/voiceads/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/migu/voiceads/bussiness/a$a;

.field private c:Ljava/lang/String;

.field private d:Lcom/migu/voiceads/utils/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/voiceads/bussiness/a$a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/voiceads/utils/i;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/i;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    iput-object p1, p0, Lcom/migu/voiceads/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/migu/voiceads/a/a;->b:Lcom/migu/voiceads/bussiness/a$a;

    iput-object p3, p0, Lcom/migu/voiceads/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/migu/voiceads/a/a;->c()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adw"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adw"

    invoke-virtual {v0, v1, p1}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adh"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adh"

    invoke-virtual {v0, v1, p1}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adunitid"

    invoke-virtual {v0, v1, p1}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string/jumbo v0, "debug_mode"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "show_time_fullscreen"

    const-string/jumbo v1, "5000"

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "back_key_enable"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "download_alert"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "browser_type"

    const-string/jumbo v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/a/a;->d()V

    invoke-virtual {p0}, Lcom/migu/voiceads/a/a;->f()V

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->t(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 3

    sget-object v0, Lcom/migu/voiceads/bussiness/a$a;->d:Lcom/migu/voiceads/bussiness/a$a;

    iget-object v1, p0, Lcom/migu/voiceads/a/a;->b:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/a$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "isboot"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "isboot"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "isboot"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/migu/voiceads/a/a;->b:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/migu/voiceads/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v2, "_cache_"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/migu/voiceads/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/a/a;->d:Lcom/migu/voiceads/utils/i;

    const-string/jumbo v1, "adunitid"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
