.class Liu$2;
.super Ljava/lang/Object;
.source "SpeechSynthesizerBinder.java"

# interfaces
.implements Ljj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liu;->a(Landroid/content/Intent;Lso;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lix;

.field final synthetic b:Liu;


# direct methods
.method constructor <init>(Liu;Lix;)V
    .locals 0
    .param p1, "this$0"    # Liu;

    .prologue
    .line 207
    iput-object p1, p0, Liu$2;->b:Liu;

    iput-object p2, p0, Liu$2;->a:Lix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 210
    iget-object v0, p0, Liu$2;->a:Lix;

    invoke-virtual {v0, p1}, Lix;->a([B)V

    .line 211
    return-void
.end method
