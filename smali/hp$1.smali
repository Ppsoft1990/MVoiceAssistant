.class Lhp$1;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/iflytek/common/adaptation/entity/SimCard;

.field final synthetic e:Lhr;

.field final synthetic f:Lhp;


# direct methods
.method constructor <init>(Lhp;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
    .locals 0
    .param p1, "this$0"    # Lhp;

    .prologue
    .line 163
    iput-object p1, p0, Lhp$1;->f:Lhp;

    iput-object p2, p0, Lhp$1;->a:Ljava/util/List;

    iput-object p3, p0, Lhp$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lhp$1;->c:Z

    iput-object p5, p0, Lhp$1;->d:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object p6, p0, Lhp$1;->e:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 166
    iget-object v0, p0, Lhp$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "address":Ljava/lang/String;
    iget-object v0, p0, Lhp$1;->f:Lhp;

    iget-object v2, p0, Lhp$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lhp$1;->c:Z

    iget-object v4, p0, Lhp$1;->d:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v5, p0, Lhp$1;->e:Lhr;

    invoke-static/range {v0 .. v5}, Lhp;->a(Lhp;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    goto :goto_0

    .line 169
    .end local v1    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method
