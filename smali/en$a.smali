.class Len$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Messenger;

.field public c:Lcom/baidu/location/LocationClientOption;

.field public d:I

.field final synthetic e:Len;


# direct methods
.method public constructor <init>(Len;Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Len$a;->e:Len;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Len$a;->a:Ljava/lang/String;

    iput-object v0, p0, Len$a;->b:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iput v1, p0, Len$a;->d:I

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Len$a;->b:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "packName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Len$a;->a:Ljava/lang/String;

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "prodName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    invoke-static {}, Ldj;->a()Ldj;

    move-result-object v0

    iget-object v3, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    iget-object v4, p0, Len$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ldj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "coorType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "addrType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "enableSimulateGps"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/LocationClientOption;->j:Z

    sget-boolean v0, Ldp;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->j:Z

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Ldp;->k:Z

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    sput-object v0, Ldp;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "openGPS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/LocationClientOption;->c:Z

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "scanSpan"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/LocationClientOption;->d:I

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "timeOut"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/LocationClientOption;->e:I

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/LocationClientOption;->g:I

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "location_change_notify"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "needDirect"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/LocationClientOption;->n:Z

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isneedaltitude"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/LocationClientOption;->s:Z

    sget-boolean v0, Ldp;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "isneedaptag"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v2

    :goto_1
    sput-boolean v0, Ldp;->g:Z

    sget-boolean v0, Ldp;->h:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "isneedaptagd"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    sput-boolean v1, Ldp;->h:Z

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_5

    invoke-static {}, Lex;->a()Lex;

    move-result-object v0

    invoke-virtual {v0}, Lex;->b()V

    :cond_5
    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->n:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->s:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->n:Z

    invoke-virtual {v0, v1}, Lfb;->a(Z)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->s:Z

    invoke-virtual {v0, v1}, Lfb;->b(Z)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    invoke-virtual {v0}, Lfb;->b()V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Len$a;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Len$a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Len$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget v0, p0, Len$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Len$a;->d:I

    goto :goto_0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v1, p0, Len$a;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Len$a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Len$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    iget v1, p0, Len$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Len$a;->d:I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Len$a;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Len$a;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Len$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget v0, p0, Len$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Len$a;->d:I

    goto :goto_0
.end method

.method static synthetic a(Len$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Len$a;->a(I)V

    return-void
.end method

.method static synthetic a(Len$a;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Len$a;->a(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Ldp;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Len$a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Len$a;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0}, Len$a;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0xa1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->g()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->c(D)V

    :cond_1
    const/16 v1, 0x15

    if-ne p2, v1, :cond_2

    const/16 v1, 0x1b

    const-string/jumbo v2, "locStr"

    invoke-direct {p0, v1, v2, v0}, Len$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    :cond_2
    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    const-string/jumbo v2, "gcj02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_5

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "gcj02"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v1

    aget-wide v2, v1, v8

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    aget-wide v2, v1, v9

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string/jumbo v1, "locStr"

    invoke-direct {p0, p2, v1, v0}, Len$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "wgs84"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    const-string/jumbo v6, "bd09ll"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "wgs842mc"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v1

    aget-wide v2, v1, v8

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    aget-wide v2, v1, v9

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    const-string/jumbo v1, "wgs84mc"

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-object v0, p0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Len$a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_0
    return-void
.end method
