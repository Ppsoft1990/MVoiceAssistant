.class public Lm$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Lm$k;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lm$a;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm$d;->q:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    .line 218
    iput-object p1, p0, Lm$d;->a:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 222
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lm$d;->j:I

    .line 224
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lm;->a()Lm$f;

    move-result-object v0

    invoke-interface {v0, p0}, Lm$f;->a(Lm$d;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lm$d;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 260
    return-object p0
.end method

.method public a(III)Lm$d;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 457
    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 458
    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 459
    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    .line 460
    .local v0, "showLights":Z
    :goto_0
    iget-object v3, p0, Lm$d;->r:Landroid/app/Notification;

    iget-object v4, p0, Lm$d;->r:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 462
    return-object p0

    .end local v0    # "showLights":Z
    :cond_0
    move v0, v2

    .line 459
    goto :goto_0

    .restart local v0    # "showLights":Z
    :cond_1
    move v1, v2

    .line 460
    goto :goto_1
.end method

.method public a(IIZ)Lm$d;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 332
    iput p1, p0, Lm$d;->n:I

    .line 333
    iput p2, p0, Lm$d;->o:I

    .line 334
    iput-boolean p3, p0, Lm$d;->p:Z

    .line 335
    return-object p0
.end method

.method public a(J)Lm$d;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 231
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 232
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Lm$d;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 355
    iput-object p1, p0, Lm$d;->d:Landroid/app/PendingIntent;

    .line 356
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lm$d;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 414
    iput-object p1, p0, Lm$d;->g:Landroid/graphics/Bitmap;

    .line 415
    return-object p0
.end method

.method public a(Landroid/widget/RemoteViews;)Lm$d;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 342
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 343
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lm$d;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iput-object p1, p0, Lm$d;->b:Ljava/lang/CharSequence;

    .line 284
    return-object p0
.end method

.method public a(Z)Lm$d;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 477
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lm$d;->a(IZ)V

    .line 478
    return-object p0
.end method

.method public b(I)Lm$d;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 513
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 516
    :cond_0
    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Lm$d;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 367
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 368
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lm$d;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    iput-object p1, p0, Lm$d;->c:Ljava/lang/CharSequence;

    .line 292
    return-object p0
.end method

.method public b(Z)Lm$d;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 497
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lm$d;->a(IZ)V

    .line 498
    return-object p0
.end method

.method public c(I)Lm$d;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 539
    iput p1, p0, Lm$d;->j:I

    .line 540
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lm$d;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 323
    iput-object p1, p0, Lm$d;->h:Ljava/lang/CharSequence;

    .line 324
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lm$d;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 395
    iget-object v0, p0, Lm$d;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method
