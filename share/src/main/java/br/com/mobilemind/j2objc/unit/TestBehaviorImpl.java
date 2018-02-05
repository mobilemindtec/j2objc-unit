package br.com.mobilemind.j2objc.unit;

import java.util.LinkedList;
import java.util.List;

/**
 *
 *
 * @author Ricardo Bocchi
 */
public abstract class TestBehaviorImpl implements TestBehavior {

    private List<String> message = new LinkedList<String>();
    private Object context;

    @Override
    public void setUp() throws Exception {
    }

    @Override
    public void setUpClass() throws Exception {
    }

    @Override
    public void tearDown() throws Exception {
    }

    @Override
    public void tearDownClass() throws Exception {
    }

    @Override
    public void say(String message) {
        this.message.add(message);
    }

    @Override
    public void clearMessages() {
        this.message.clear();
    }

    @Override
    public List<String> getMessage() {
        return message;
    }

    @Override
    public void setContext(Object context) {
        this.context = context;
    }

    @Override
    public Object getContext() {
        return context;
    }
}
