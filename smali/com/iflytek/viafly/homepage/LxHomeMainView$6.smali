.class Lcom/iflytek/viafly/homepage/LxHomeMainView$6;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$6;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1206
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "pull to refresh over time"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$6;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->s(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Laih;

    move-result-object v0

    invoke-virtual {v0}, Laih;->a()V

    .line 1208
    return-void
.end method
