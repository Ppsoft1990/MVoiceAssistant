.class public abstract Lvx;
.super Ljava/lang/Object;
.source "BizRequestHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BusinessRequest"


# instance fields
.field private mBusinessManager:Lvy;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lvx;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lvy;

    new-instance v1, Lvx$1;

    invoke-direct {v1, p0}, Lvx$1;-><init>(Lvx;)V

    invoke-direct {v0, p3, v1, p2}, Lvy;-><init>(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Ljava/lang/String;)V

    iput-object v0, p0, Lvx;->mBusinessManager:Lvy;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lvx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lvx;

    .prologue
    .line 22
    iget-object v0, p0, Lvx;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p2, "subKey"    # Ljava/lang/String;
    .param p3, "subValue"    # Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0}, Lvy;->a()V

    .line 155
    :cond_0
    return-void
.end method

.method public cancelRequest(J)V
    .locals 1
    .param p1, "requestID"    # J

    .prologue
    .line 162
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1, p2}, Lvy;->a(J)V

    .line 165
    :cond_0
    return-void
.end method

.method public reportServerWithGet(ILjava/lang/String;)V
    .locals 3
    .param p1, "businessType"    # I
    .param p2, "reportUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportServerWithGet(), reportUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1, p2}, Lvy;->a(ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public reportServerWithPost(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "businessType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "reportUrl"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportServerWithPost(), reportUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1, p2, p3}, Lvy;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 77
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p4, "mode"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 88
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "paramElement"    # Lorg/json/JSONObject;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "paramElement"    # Lorg/json/JSONObject;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "mode"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "baseElement"    # Lorg/json/JSONObject;
    .param p4, "paramElement"    # Lorg/json/JSONObject;
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lvy;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendRequestFromCaller(Ljava/lang/String;ILcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/framework/lms/LmsCallInfo;Lcom/iflytek/yd/util/xml/XmlElement;)J
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p4, "callInfo"    # Lcom/iflytek/framework/lms/LmsCallInfo;
    .param p5, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 122
    const-string/jumbo v0, "BusinessRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequestFromCaller(), cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    iget-object v1, p0, Lvx;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/lms/LmsCallInfo;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setNeedGZip(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1}, Lvy;->a(Z)V

    .line 74
    return-void
.end method

.method public setOperationListener(Lyn;)V
    .locals 1
    .param p1, "listener"    # Lyn;

    .prologue
    .line 58
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1}, Lvy;->a(Lyn;)V

    .line 59
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lvx;->mBusinessManager:Lvy;

    invoke-virtual {v0, p1}, Lvy;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method
