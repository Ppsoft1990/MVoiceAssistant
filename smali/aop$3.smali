.class Laop$3;
.super Ljava/lang/Object;
.source "SmsBusinessManager.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$SimCardSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laop;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lhr;

.field final synthetic e:Laop;


# direct methods
.method constructor <init>(Laop;Ljava/util/List;Ljava/lang/String;ZLhr;)V
    .locals 0
    .param p1, "this$0"    # Laop;

    .prologue
    .line 806
    iput-object p1, p0, Laop$3;->e:Laop;

    iput-object p2, p0, Laop$3;->a:Ljava/util/List;

    iput-object p3, p0, Laop$3;->b:Ljava/lang/String;

    iput-boolean p4, p0, Laop$3;->c:Z

    iput-object p5, p0, Laop$3;->d:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 810
    iget-object v0, p0, Laop$3;->e:Laop;

    iget-object v1, p0, Laop$3;->e:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laop$3;->a:Ljava/util/List;

    iget-object v3, p0, Laop$3;->b:Ljava/lang/String;

    iget-boolean v4, p0, Laop$3;->c:Z

    iget-object v6, p0, Laop$3;->d:Lhr;

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Laop;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 811
    return-void
.end method
