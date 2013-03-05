/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.36
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace Indri {

using System;
using System.Runtime.InteropServices;

public class QueryAnnotationNode : IDisposable {
  private HandleRef swigCPtr;
  protected bool swigCMemOwn;

  internal QueryAnnotationNode(IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new HandleRef(this, cPtr);
  }

  internal static HandleRef getCPtr(QueryAnnotationNode obj) {
    return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
  }

  ~QueryAnnotationNode() {
    Dispose();
  }

  public virtual void Dispose() {
    lock(this) {
      if(swigCPtr.Handle != IntPtr.Zero && swigCMemOwn) {
        swigCMemOwn = false;
        indri_csharpPINVOKE.delete_QueryAnnotationNode(swigCPtr);
      }
      swigCPtr = new HandleRef(null, IntPtr.Zero);
      GC.SuppressFinalize(this);
    }
  }

  public string name {
    set {
      indri_csharpPINVOKE.QueryAnnotationNode_name_set(swigCPtr, value);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
    } 
    get {
      string ret = indri_csharpPINVOKE.QueryAnnotationNode_name_get(swigCPtr);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
      return ret;
    } 
  }

  public string type {
    set {
      indri_csharpPINVOKE.QueryAnnotationNode_type_set(swigCPtr, value);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
    } 
    get {
      string ret = indri_csharpPINVOKE.QueryAnnotationNode_type_get(swigCPtr);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
      return ret;
    } 
  }

  public string queryText {
    set {
      indri_csharpPINVOKE.QueryAnnotationNode_queryText_set(swigCPtr, value);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
    } 
    get {
      string ret = indri_csharpPINVOKE.QueryAnnotationNode_queryText_get(swigCPtr);
      if (indri_csharpPINVOKE.SWIGPendingException.Pending) throw indri_csharpPINVOKE.SWIGPendingException.Retrieve();
      return ret;
    } 
  }

  public QueryAnnotationNodeVector children {
    set {
      indri_csharpPINVOKE.QueryAnnotationNode_children_set(swigCPtr, QueryAnnotationNodeVector.getCPtr(value));
    } 
    get {
      IntPtr cPtr = indri_csharpPINVOKE.QueryAnnotationNode_children_get(swigCPtr);
      QueryAnnotationNodeVector ret = (cPtr == IntPtr.Zero) ? null : new QueryAnnotationNodeVector(cPtr, false);
      return ret;
    } 
  }

  public QueryAnnotationNode() : this(indri_csharpPINVOKE.new_QueryAnnotationNode(), true) {
  }

}

}
