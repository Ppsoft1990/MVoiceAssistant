.class public Lcom/iflytek/blc/push/dao/NoticeView;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/blc/push/entity/BaseNotice;

.field private b:Lcom/iflytek/blc/push/entity/ClientNotice;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/push/entity/BaseNotice;Lcom/iflytek/blc/push/entity/ClientNotice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/push/dao/NoticeView;->a:Lcom/iflytek/blc/push/entity/BaseNotice;

    iput-object p2, p0, Lcom/iflytek/blc/push/dao/NoticeView;->b:Lcom/iflytek/blc/push/entity/ClientNotice;

    return-void
.end method


# virtual methods
.method public getBaseNotice()Lcom/iflytek/blc/push/entity/BaseNotice;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/dao/NoticeView;->a:Lcom/iflytek/blc/push/entity/BaseNotice;

    return-object v0
.end method

.method public getClientNotice()Lcom/iflytek/blc/push/entity/ClientNotice;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/dao/NoticeView;->b:Lcom/iflytek/blc/push/entity/ClientNotice;

    return-object v0
.end method

.method public setBaseNotice(Lcom/iflytek/blc/push/entity/BaseNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/dao/NoticeView;->a:Lcom/iflytek/blc/push/entity/BaseNotice;

    return-void
.end method

.method public setClientNotice(Lcom/iflytek/blc/push/entity/ClientNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/dao/NoticeView;->b:Lcom/iflytek/blc/push/entity/ClientNotice;

    return-void
.end method
