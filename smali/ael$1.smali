.class Lael$1;
.super Ljava/lang/Object;
.source "CallMessageItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lael;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0
    .param p1, "this$0"    # Lael;

    .prologue
    .line 118
    iput-object p1, p0, Lael$1;->a:Lael;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Lael$1;->a:Lael;

    invoke-static {v1}, Lael;->a(Lael;)V

    .line 124
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 125
    .local v0, "array":Lorg/json/JSONArray;
    const-string/jumbo v1, "card1"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    iget-object v1, p0, Lael$1;->a:Lael;

    invoke-static {v1}, Lael;->b(Lael;)Lacz;

    move-result-object v1

    const-string/jumbo v2, "callOut"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lacz;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 128
    iget-object v1, p0, Lael$1;->a:Lael;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lael;->a(Lael;ZZ)V

    .line 129
    return-void
.end method
