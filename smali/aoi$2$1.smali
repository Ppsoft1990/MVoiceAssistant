.class Laoi$2$1;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi$2;->parseToken(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laoi$2;


# direct methods
.method constructor <init>(Laoi$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Laoi$2;

    .prologue
    .line 218
    iput-object p1, p0, Laoi$2$1;->b:Laoi$2;

    iput-object p2, p0, Laoi$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Laoi$2$1;->b:Laoi$2;

    iget-object v0, v0, Laoi$2;->a:Laoi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoi;->a(Laoi;I)I

    .line 222
    iget-object v0, p0, Laoi$2$1;->b:Laoi$2;

    iget-object v0, v0, Laoi$2;->a:Laoi;

    iget-object v1, p0, Laoi$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laoi;->a(Laoi;Ljava/lang/String;)V

    .line 223
    return-void
.end method
