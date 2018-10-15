.class public interface abstract Lcom/iflytek/mmp/core/componentsManager/Components;
.super Ljava/lang/Object;


# static fields
.field public static final CLASS_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "Class not found"

.field public static final ERROR:Ljava/lang/String; = "Error"

.field public static final ILLEGAL_ACCESS_EXCEPTION:Ljava/lang/String; = "Illegal access"

.field public static final INSTANTIATION_EXCEPTION:Ljava/lang/String; = "Instantiation error"

.field public static final INVALID_ACTION:Ljava/lang/String; = "Invalid action"

.field public static final IO_EXCEPTION:Ljava/lang/String; = "IO error"

.field public static final JSON_EXCEPTION:Ljava/lang/String; = "JSON error"

.field public static final MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "Malformed url"

.field public static final NO_RESULT:Ljava/lang/String; = "No result"

.field public static final OK:Ljava/lang/String; = "OK"


# virtual methods
.method public abstract exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end method

.method public abstract init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
.end method

.method public abstract onDestroy()V
.end method
