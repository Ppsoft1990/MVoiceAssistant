.class public final Llh;
.super Lla;


# instance fields
.field private a:Lkq;

.field private b:Llg;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmc;Landroid/os/HandlerThread;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lla;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Llh;->a:Lkq;

    new-instance v0, Llg;

    invoke-direct {v0}, Llg;-><init>()V

    iput-object v0, p0, Llh;->b:Llg;

    iput-object v1, p0, Llh;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Llh;->a(Lmc;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    const/16 v3, 0x4e29

    invoke-super {p0, p1}, Lla;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e24

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lli;

    invoke-virtual {v0}, Lli;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lli;->a()[B

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_1
    iget-object v2, p0, Llh;->b:Llg;

    iget-object v3, p0, Llh;->m:Landroid/content/Context;

    invoke-virtual {v0}, Lli;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lli;->a()[B

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, p0}, Llg;->a(Landroid/content/Context;Ljava/lang/String;[BLla;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Llh;->b:Llg;

    iget-object v2, p0, Llh;->m:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Llg;->a(Landroid/content/Context;Lla;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_2
    sget-object v2, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v2}, Llh;->a(Lcom/iflytek/cloud/a/b/c;)V

    iget-object v2, p0, Llh;->b:Llg;

    iget-object v3, p0, Llh;->m:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v0}, Llg;->a(Landroid/content/Context;Lla;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Llh;->a:Lkq;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Llh;->n:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Llh;->a:Lkq;

    invoke-interface {v2, v0}, Lkq;->a([B)V

    :cond_4
    invoke-virtual {p0, v1}, Llh;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    invoke-super {p0, p1}, Lla;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Llh;->a:Lkq;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llh;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llh;->a:Lkq;

    invoke-interface {v0, p1}, Lkq;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method public final a(Lkq;)V
    .locals 1

    iput-object p1, p0, Llh;->a:Lkq;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Llh;->b(I)V

    return-void
.end method
