.class final Laca$1;
.super Ljava/lang/Object;
.source "MessageStartNewInteractionHelper.java"

# interfaces
.implements Lacs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laca;->a(Lacp;Lacr;Laau;Laci;Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp;

.field final synthetic b:Laci;


# direct methods
.method constructor <init>(Lacp;Laci;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Laca$1;->a:Lacp;

    iput-object p2, p0, Laca$1;->b:Laci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lacl;->a:Z

    .line 161
    iget-object v0, p0, Laca$1;->a:Lacp;

    iget-object v1, p0, Laca$1;->b:Laci;

    invoke-virtual {v1}, Laci;->i()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lacp;->reStartReco(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
