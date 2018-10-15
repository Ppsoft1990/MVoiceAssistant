.class final Laca$2;
.super Ljava/lang/Object;
.source "MessageStartNewInteractionHelper.java"

# interfaces
.implements Lhr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laca;->a(Lacp;Laau;Laci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 265
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 266
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FLAG_SEND_SMS_AFTER_OPEN_APP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;ILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;
    .param p2, "code"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 271
    return-void
.end method
