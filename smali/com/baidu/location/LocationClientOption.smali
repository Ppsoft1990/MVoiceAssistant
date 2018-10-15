.class public final Lcom/baidu/location/LocationClientOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/LocationClientOption$1;,
        Lcom/baidu/location/LocationClientOption$LocationMode;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field protected t:Lcom/baidu/location/LocationClientOption$LocationMode;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    const-string/jumbo v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->e:I

    const-string/jumbo v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->g:I

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->h:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->j:Z

    const-string/jumbo v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->l:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->p:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->q:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->r:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->s:Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/LocationClientOption;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    const-string/jumbo v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->e:I

    const-string/jumbo v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->g:I

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->h:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->j:Z

    const-string/jumbo v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->l:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->p:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->q:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->r:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->s:Z

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->c:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->d:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->d:I

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->e:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->e:I

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iget v0, p1, Lcom/baidu/location/LocationClientOption;->g:I

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->g:I

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->h:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->h:Z

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->k:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->i:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->i:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->l:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->l:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->m:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->m:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->j:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->j:Z

    iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->t:Lcom/baidu/location/LocationClientOption$LocationMode;

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->t:Lcom/baidu/location/LocationClientOption$LocationMode;

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->o:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->o:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->p:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->p:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->q:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->q:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->r:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->r:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->n:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->n:Z

    iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->s:Z

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->s:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->d:I

    return-void
.end method

.method public a(Lcom/baidu/location/LocationClientOption$LocationMode;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/baidu/location/LocationClientOption$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/location/LocationClientOption$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal this mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    iput v2, p0, Lcom/baidu/location/LocationClientOption;->g:I

    :goto_0
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->t:Lcom/baidu/location/LocationClientOption$LocationMode;

    return-void

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->g:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->g:I

    iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bd09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bd09ll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "all"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "noaddr"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/LocationClientOption;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->c:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->d:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->e:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->h:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->h:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->g:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->g:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->i:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->i:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->l:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->m:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->m:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->o:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->o:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->p:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->p:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->q:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->q:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->r:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->r:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->n:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->n:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->s:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->s:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->t:Lcom/baidu/location/LocationClientOption$LocationMode;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->t:Lcom/baidu/location/LocationClientOption$LocationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->i:Z

    return v0
.end method
