.class public Lcom/iflytek/blc/feedback/Attachment;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/feedback/Attachment;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/feedback/Attachment;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/feedback/Attachment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    goto :goto_0
.end method

.method public setContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/feedback/Attachment;->b:[B

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/feedback/Attachment;->a:Ljava/lang/String;

    return-void
.end method
