.class public Lagl;
.super Ljava/lang/Object;
.source "GrayPermManager.java"

# interfaces
.implements Lvp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagl$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static f:Landroid/content/Context;


# instance fields
.field private d:Lagr;

.field private e:Lagk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lagl;->a:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/adapter.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lagl;->b:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/permission.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lagl;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lagk;

    sget-object v1, Lagl;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lagk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lagl;->e:Lagk;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lagl$1;)V
    .locals 0
    .param p1, "x0"    # Lagl$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lagl;-><init>()V

    return-void
.end method

.method public static a()Lagl;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lagl$a;->a:Lagl;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lagl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lagl;->f:Landroid/content/Context;

    .line 69
    sget-object v0, Lagl$a;->a:Lagl;

    return-object v0
.end method

.method static synthetic a(Lagl;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lagl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lagl;->a(Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lagl;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lagl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lagl;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 274
    const/4 v3, 0x0

    .line 276
    .local v3, "input":Ljava/io/InputStream;
    if-eqz p1, :cond_1

    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, "res":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_0

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 283
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 284
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    .end local v5    # "res":Ljava/lang/String;
    .local v6, "res":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v6}, Lagl;->b(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v7, "GrayPermManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getXmlString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "buffer":[B
    .end local v6    # "res":Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 293
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 295
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 301
    :cond_2
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GrayPermManager"

    const-string/jumbo v8, "error happened 2"

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "res":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 291
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string/jumbo v7, "GrayPermManager"

    const-string/jumbo v8, "error happened 1"

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    if-eqz v3, :cond_2

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 296
    :catch_2
    move-exception v1

    .line 297
    const-string/jumbo v7, "GrayPermManager"

    const-string/jumbo v8, "error happened 2"

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .end local v5    # "res":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    .line 295
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 298
    :cond_3
    :goto_3
    throw v7

    .line 296
    :catch_3
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, "error happened 2"

    invoke-static {v8, v9, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 290
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "res":Ljava/lang/String;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "res":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "res":Ljava/lang/String;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6    # "res":Ljava/lang/String;
    .restart local v5    # "res":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "GrayPermManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadError | errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p3, :cond_1

    .line 352
    const-string/jumbo v2, "url"

    .line 353
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, "type":I
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v2, "GrayPermManager"

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    sget-object v2, Lagl;->f:Landroid/content/Context;

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const-string/jumbo v3, "GrayPermManager"

    .line 359
    invoke-virtual {v2, v3}, Lno;->a(Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 367
    sget-object v2, Lagl;->f:Landroid/content/Context;

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v1}, Lno;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .end local v0    # "type":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 360
    .restart local v0    # "type":I
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    :try_start_1
    const-string/jumbo v2, "GrayPermManagerpermission"

    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    sget-object v2, Lagl;->f:Landroid/content/Context;

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const-string/jumbo v3, "GrayPermManagerpermission"

    .line 364
    invoke-virtual {v2, v3}, Lno;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "type":I
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 309
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 310
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    .line 312
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 313
    .local v2, "type":I
    const-string/jumbo v4, "file_path"

    .line 314
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v4, "url"

    .line 316
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 318
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v4, "GrayPermManager"

    .line 320
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    const-string/jumbo v4, "GrayPermManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadStatusChanged || download finish | url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v4, Lagl;->f:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    const-string/jumbo v5, "GrayPermManager"

    .line 325
    invoke-virtual {v4, v5}, Lno;->a(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, v1, v2}, Lagl;->a(Ljava/lang/String;I)V

    .line 327
    if-eqz v3, :cond_0

    .line 328
    sget-object v4, Lagl;->f:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    .line 329
    invoke-virtual {v4, v3}, Lno;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "type":I
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    if-eqz p1, :cond_0

    :try_start_1
    const-string/jumbo v4, "GrayPermManagerpermission"

    .line 332
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    const-string/jumbo v4, "GrayPermManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadStatusChanged || download finish | url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v4, Lagl;->f:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    const-string/jumbo v5, "GrayPermManagerpermission"

    .line 337
    invoke-virtual {v4, v5}, Lno;->a(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v1, v2}, Lagl;->a(Ljava/lang/String;I)V

    .line 339
    if-eqz v3, :cond_0

    .line 340
    sget-object v4, Lagl;->f:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    .line 341
    invoke-virtual {v4, v3}, Lno;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private b(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 192
    sget-object v6, Lagl;->a:Ljava/lang/String;

    .line 193
    .local v6, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "gray_permission.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 201
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "gray_permission_db_version"

    .line 202
    invoke-virtual {v8, v9}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 203
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "gray_permission_db_version"

    invoke-virtual {v8, v9, v10}, Lil;->a(Ljava/lang/String;I)V

    .line 205
    const/4 v7, 0x0

    .line 206
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 208
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "config/gray_permission.db"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 210
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 213
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 214
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 216
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 217
    .local v1, "count":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    .line 218
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 220
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 221
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    if-eqz v4, :cond_3

    .line 225
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 230
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 232
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 239
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_3
    return-void

    .line 223
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :cond_5
    if-eqz v5, :cond_6

    .line 225
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 230
    :cond_6
    :goto_4
    if-eqz v7, :cond_4

    .line 232
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 233
    :catch_1
    move-exception v2

    .line 234
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, "copyDataBase | close inputStream error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, "copyDataBase | close fileOutputStream error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 226
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 227
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, "copyDataBase | close fileOutputStream error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 233
    :catch_4
    move-exception v2

    .line 234
    const-string/jumbo v8, "GrayPermManager"

    const-string/jumbo v9, "copyDataBase | close inputStream error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_7

    .line 225
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 230
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 232
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 235
    :cond_8
    :goto_7
    throw v8

    .line 226
    :catch_5
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "GrayPermManager"

    const-string/jumbo v10, "copyDataBase | close fileOutputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 234
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "GrayPermManager"

    const-string/jumbo v10, "copyDataBase | close inputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 220
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "xmlString"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lagl;->d:Lagr;

    invoke-interface {v0, p1}, Lagr;->a(Ljava/lang/String;)V

    .line 305
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v1, p0, Lagl;->d:Lagr;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lagl;->d:Lagr;

    invoke-interface {v1, p1}, Lagr;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 93
    .local v0, "controlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .end local v0    # "controlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 2
    .param p1, "clientAdapt"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 417
    const-string/jumbo v0, "GrayPermManager"

    const-string/jumbo v1, "onGetFuncGrayCtrlSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, p1}, Lagl;->b(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    .line 419
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lagl;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lagl;->b(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lags;

    sget-object v1, Lagl;->f:Landroid/content/Context;

    iget-object v2, p0, Lagl;->e:Lagk;

    invoke-direct {v0, v1, v2}, Lags;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lagl;->d:Lagr;

    .line 84
    return-void
.end method

.method public b(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 7
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    const-string/jumbo v0, "GrayPermManager"

    const-string/jumbo v1, "downloadAdapterResult | info is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 384
    const-string/jumbo v0, "GrayPermManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadFuncGrayCtrl | url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v0, Lagl;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lagl;->f:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v1, "GrayPermManager"

    new-instance v2, Lagl$2;

    invoke-direct {v2, p0}, Lagl$2;-><init>(Lagl;)V

    invoke-virtual {v0, v1, v2}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 403
    sget-object v0, Lagl;->f:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const/16 v1, 0x9

    const-string/jumbo v2, "adapter_file"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lagl;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v0, "GrayPermManager"

    const-string/jumbo v1, "downloadAdapterResult | url is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Lagp;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lagl;->d:Lagr;

    invoke-interface {v0}, Lagr;->a()Lagp;

    move-result-object v0

    return-object v0
.end method
