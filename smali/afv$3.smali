.class Lafv$3;
.super Ljava/lang/Object;
.source "LatestSmsItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafv;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafv;


# direct methods
.method constructor <init>(Lafv;)V
    .locals 0
    .param p1, "this$0"    # Lafv;

    .prologue
    .line 145
    iput-object p1, p0, Lafv$3;->a:Lafv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lafv$3;->a:Lafv;

    const-string/jumbo v1, "shareToWeiXin"

    invoke-static {v0, v1}, Lafv;->a(Lafv;Ljava/lang/String;)V

    .line 149
    return-void
.end method
