.class public Lcom/migu/voiceads/bussiness/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field protected b:Landroid/content/Context;

.field private c:Lcom/migu/voiceads/MIGUBootScreenAdListener;

.field private d:Lcom/migu/voiceads/bussiness/a/c;

.field private e:Lcom/migu/voiceads/bussiness/a/e;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Bundle;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUBootScreenAdListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/migu/voiceads/bussiness/a/a;->f:J

    iput-object v2, p0, Lcom/migu/voiceads/bussiness/a/a;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/migu/voiceads/bussiness/a/a;->h:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/bussiness/a/a;->i:Z

    new-instance v0, Lcom/migu/voiceads/a/a;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$a;->g:Lcom/migu/voiceads/bussiness/a$a;

    invoke-direct {v0, p1, v1, p2}, Lcom/migu/voiceads/a/a;-><init>(Landroid/content/Context;Lcom/migu/voiceads/bussiness/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->a:Lcom/migu/voiceads/a/a;

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/bussiness/a/a;->c:Lcom/migu/voiceads/MIGUBootScreenAdListener;

    new-instance v0, Lcom/migu/voiceads/bussiness/a/c;

    invoke-direct {v0}, Lcom/migu/voiceads/bussiness/a/c;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->d:Lcom/migu/voiceads/bussiness/a/c;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->d:Lcom/migu/voiceads/bussiness/a/c;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/a;->c:Lcom/migu/voiceads/MIGUBootScreenAdListener;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/a/c;->a(Lcom/migu/voiceads/MIGUBootScreenAdListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    new-instance v0, Lcom/migu/voiceads/bussiness/a/e;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/a;->a:Lcom/migu/voiceads/a/a;

    iget-object v3, p0, Lcom/migu/voiceads/bussiness/a/a;->d:Lcom/migu/voiceads/bussiness/a/c;

    iget-boolean v4, p0, Lcom/migu/voiceads/bussiness/a/a;->i:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/migu/voiceads/bussiness/a/e;-><init>(Landroid/content/Context;Lcom/migu/voiceads/a/a;Lcom/migu/voiceads/bussiness/a/c;Z)V

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    iget-wide v2, p0, Lcom/migu/voiceads/bussiness/a/a;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/bussiness/a/e;->a(J)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/a/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/a;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/a/e;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->e:Lcom/migu/voiceads/bussiness/a/e;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/bussiness/a/e;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/a;->h:Landroid/os/Bundle;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/a;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/bussiness/a/a;->i:Z

    return-void
.end method
