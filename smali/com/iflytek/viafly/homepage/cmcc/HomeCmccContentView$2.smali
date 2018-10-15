.class Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$2;
.super Ljava/lang/Object;
.source "HomeCmccContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$2;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$2;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e()V

    .line 685
    return-void
.end method
