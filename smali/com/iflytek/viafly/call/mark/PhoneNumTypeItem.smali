.class public Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
.super Ljava/lang/Object;
.source "PhoneNumTypeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lbbw;
    a = "phone_number_type"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x452f938e1ff0c8f5L


# instance fields
.field private id:Ljava/lang/Integer;
    .annotation runtime Lbbu;
        a = "id"
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private mClassify:[B
    .annotation runtime Lbbu;
        a = "phoneClassify"
    .end annotation
.end field

.field private mName:[B
    .annotation runtime Lbbu;
        a = "phoneName"
    .end annotation
.end field

.field private mNum:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "phoneNum"
    .end annotation
.end field

.field private markTimes:[B
    .annotation runtime Lbbu;
        a = "markTimes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "marktimes"    # Ljava/lang/String;
    .param p3, "classify"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    invoke-static {v0}, Ladg;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    .line 52
    :goto_0
    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    .line 57
    :goto_1
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    .line 62
    :goto_2
    if-eqz p4, :cond_3

    .line 63
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    .line 68
    :goto_3
    return-void

    .line 50
    :cond_0
    iput-object v2, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    iput-object v2, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    goto :goto_1

    .line 60
    :cond_2
    iput-object v2, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    goto :goto_2

    .line 65
    :cond_3
    iput-object v2, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    goto :goto_3
.end method


# virtual methods
.method public getClassify()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->b([BLandroid/content/Context;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public getMarkTimes()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->b([BLandroid/content/Context;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->b([BLandroid/content/Context;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public getNum()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    invoke-static {v1}, Ladg;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->b([BLandroid/content/Context;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public setClassify(Ljava/lang/String;)V
    .locals 2
    .param p1, "classify"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    .line 109
    return-void
.end method

.method public setMarkTimes(Ljava/lang/String;)V
    .locals 2
    .param p1, "markTimes"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    .line 121
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    .line 98
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v0

    invoke-static {v0}, Ladg;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toBusinessNumberType()Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mNum:Ljava/lang/String;

    .line 125
    .local v3, "realNum":Ljava/lang/String;
    const/4 v2, 0x0

    .line 126
    .local v2, "realName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 127
    .local v0, "realClassify":Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "realMarkTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    if-eqz v5, :cond_0

    .line 129
    new-instance v2, Ljava/lang/String;

    .end local v2    # "realName":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mName:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    .restart local v2    # "realName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    if-eqz v5, :cond_1

    .line 132
    new-instance v1, Ljava/lang/String;

    .end local v1    # "realMarkTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->markTimes:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 134
    .restart local v1    # "realMarkTime":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    if-eqz v5, :cond_2

    .line 135
    new-instance v0, Ljava/lang/String;

    .end local v0    # "realClassify":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->mClassify:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 137
    .restart local v0    # "realClassify":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-direct {v4, v3, v1, v0, v2}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v4, "ret":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    return-object v4
.end method
