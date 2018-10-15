.class Lrr$a;
.super Ljava/lang/Object;
.source "TelSdkBinder.java"

# interfaces
.implements Lnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lrr;

.field private b:Lsg;


# direct methods
.method public constructor <init>(Lrr;Lsg;)V
    .locals 0
    .param p2, "ext"    # Lsg;

    .prologue
    .line 210
    iput-object p1, p0, Lrr$a;->a:Lrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lrr$a;->b:Lsg;

    .line 212
    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 232
    const-string/jumbo v1, "TelsdkBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthError type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v1, 0x3ef

    if-ne p3, v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/16 v1, 0x3f1

    if-ne p3, v1, :cond_2

    .line 240
    iget-object v1, p0, Lrr$a;->b:Lsg;

    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    iget-object v1, p0, Lrr$a;->b:Lsg;

    iget-object v2, p0, Lrr$a;->a:Lrr;

    invoke-static {v2, p3}, Lrr;->a(Lrr;I)I

    move-result v2

    iget-object v3, p0, Lrr$a;->a:Lrr;

    invoke-static {v3, p1}, Lrr;->a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lsg;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v1, 0x64

    if-ne p2, v1, :cond_3

    .line 254
    iget-object v1, p0, Lrr$a;->a:Lrr;

    invoke-static {v1}, Lrr;->a(Lrr;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v1, p1, p0, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v1, p0, Lrr$a;->b:Lsg;

    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    iget-object v1, p0, Lrr$a;->b:Lsg;

    iget-object v2, p0, Lrr$a;->a:Lrr;

    invoke-static {v2, p3}, Lrr;->a(Lrr;I)I

    move-result v2

    iget-object v3, p0, Lrr$a;->a:Lrr;

    invoke-static {v3, p1}, Lrr;->a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lsg;->a(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 261
    :catch_2
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 216
    const-string/jumbo v1, "TelsdkBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthResult type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lrr$a;->b:Lsg;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lrr$a;->b:Lsg;

    const/4 v2, 0x0

    iget-object v3, p0, Lrr$a;->a:Lrr;

    invoke-static {v3, p1}, Lrr;->a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lsg;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
