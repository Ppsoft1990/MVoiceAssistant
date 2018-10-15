.class final Lo/fm;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lo/fl;


# direct methods
.method constructor <init>(Lo/fl;)V
    .locals 0

    iput-object p1, p0, Lo/fm;->a:Lo/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/fm;->a:Lo/fl;

    iget-object v0, v0, Lo/fl;->a:Lo/fh;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v2

    iget-object v2, v2, Lo/fv;->b:Ljava/lang/String;

    const-string/jumbo v4, "datasms"

    iget-object v5, p0, Lo/fm;->a:Lo/fl;

    iget-object v5, v5, Lo/fl;->a:Lo/fh;

    invoke-static {v5}, Lo/fh;->e(Lo/fh;)Lcom/cmcc/migusso/sdk/auth/TokenListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lo/fh;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x18f40

    invoke-static {v0, v3}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fm;->a:Lo/fl;

    iget-object v1, v1, Lo/fl;->a:Lo/fh;

    invoke-static {v1, v0}, Lo/fh;->a(Lo/fh;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
