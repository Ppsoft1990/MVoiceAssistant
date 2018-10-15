.class Lafz$1;
.super Ljava/lang/Object;
.source "SmsOfflineItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafz;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladf;

.field final synthetic b:Lafz;


# direct methods
.method constructor <init>(Lafz;Ladf;)V
    .locals 0
    .param p1, "this$0"    # Lafz;

    .prologue
    .line 47
    iput-object p1, p0, Lafz$1;->b:Lafz;

    iput-object p2, p0, Lafz$1;->a:Ladf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lafz$1;->a:Ladf;

    const-string/jumbo v1, "download"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladf;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 52
    return-void
.end method
